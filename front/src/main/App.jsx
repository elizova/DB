import React, { useEffect, useMemo, useState } from 'react'
import { getProducts } from './api'

const Toolbar = ({ query, setQuery, minPrice, setMinPrice, maxPrice, setMaxPrice, hasPhoto, setHasPhoto }) => (
  <div className="toolbar">
    <input
      className="search"
      placeholder="Поиск по названию..."
      value={query}
      onChange={(e) => setQuery(e.target.value)}
    />
    <div className="filters">
      <label>
        Цена от
        <input type="number" min={0} value={minPrice} onChange={(e) => setMinPrice(e.target.value)} />
      </label>
      <label>
        до
        <input type="number" min={0} value={maxPrice} onChange={(e) => setMaxPrice(e.target.value)} />
      </label>
      <label className="checkbox">
        <input type="checkbox" checked={hasPhoto} onChange={(e) => setHasPhoto(e.target.checked)} /> Только с фото
      </label>
    </div>
  </div>
)

const Card = ({ item, onClick }) => (
  <div className="card" onClick={() => onClick(item)}>
    <div className="card-img-wrap">
      {item.photo_url ? (
        <img className="card-img" src={item.photo_url} alt={item.name || ''} />
      ) : (
        <div className="card-img-ph">Нет фото</div>
      )}
    </div>
    <div className="card-body">
      <div className="card-title" title={item.name || ''}>{item.name || 'Без названия'}</div>
      <div className="card-price">{item.cost != null ? `${item.cost} ₽` : '—'}</div>
    </div>
  </div>
)

const Dialog = ({ item, onClose }) => {
  if (!item) return null
  const fields = [
    ['Цена', item.cost != null ? `${item.cost} ₽` : '—'],
    ['Вес', item.weight],
    ['Время работы', item.work_time],
    ['Время зарядки', item.charge_time],
    ['Длина хода', item.lenght_of_work],
    ['Емкость батареи', item.battery_capacity],
    ['Рабочее напряжение', item.voltage],
    ['Модель', item.model],
    ['Материал', item.material],
    ['Мощность', item.power],
    ['Мотор', item.motor],
    ['Производство', item.manufactured],
    ['Гарантия', item.warranty],
    ['Об / мин', item.rpm],
  ]
  return (
    <div className="modal-backdrop" onClick={onClose}>
      <div className="modal" onClick={(e) => e.stopPropagation()}>
        <button className="modal-close" onClick={onClose}>×</button>
        <div className="modal-content">
          <div className="modal-left">
            {item.photo_url ? (
              <img className="modal-img" src={item.photo_url} alt={item.name || ''} />
            ) : (
              <div className="modal-img-ph">Нет фото</div>
            )}
          </div>
          <div className="modal-right">
            <h2 className="modal-title">{item.name || 'Без названия'}</h2>
            {item.product_url && (
              <a className="modal-link" href={item.product_url} target="_blank" rel="noreferrer">Открыть на сайте →</a>
            )}
            <div className="table">
              {fields.map(([k, v]) => (
                <div className="row" key={k}>
                  <div className="cell key">{k}</div>
                  <div className="cell val">{v || '—'}</div>
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default function App() {
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const [items, setItems] = useState([])
  const [total, setTotal] = useState(0)
  const [query, setQuery] = useState('')
  const [minPrice, setMinPrice] = useState('')
  const [maxPrice, setMaxPrice] = useState('')
  const [hasPhoto, setHasPhoto] = useState(false)
  const [selected, setSelected] = useState(null)
  const [page, setPage] = useState(0)
  const [pageSize, setPageSize] = useState(20)

  useEffect(() => {
    setLoading(true)
    setError('')
    getProducts({ q: query, page, page_size: pageSize }).then((res) => {
      setItems(res.result || [])
      setTotal(Number(res.count || 0))
    }).catch(() => setError('Не удалось загрузить каталог')).finally(() => setLoading(false))
  }, [query, page, pageSize])

  // Reset page when query changes
  useEffect(() => { setPage(0) }, [query])

  const filtered = useMemo(() => {
    let arr = items
    if (hasPhoto) arr = arr.filter((x) => !!x.photo_url)
    const min = minPrice !== '' ? Number(minPrice) : null
    const max = maxPrice !== '' ? Number(maxPrice) : null
    if (min != null) arr = arr.filter((x) => x.cost == null || Number(x.cost) >= min)
    if (max != null) arr = arr.filter((x) => x.cost == null || Number(x.cost) <= max)
    return arr
  }, [items, minPrice, maxPrice, hasPhoto])

  return (
    <div className="wrap">
      <h1 className="title">Каталог</h1>
      <Toolbar
        query={query}
        setQuery={setQuery}
        minPrice={minPrice}
        setMinPrice={setMinPrice}
        maxPrice={maxPrice}
        setMaxPrice={setMaxPrice}
        hasPhoto={hasPhoto}
        setHasPhoto={setHasPhoto}
      />
      {loading && <div className="status">Загрузка…</div>}
      {error && <div className="error">{error}</div>}
      <div className="grid">
        {filtered.map((item) => (
          <Card key={`${item.id}-${item.product_url}`} item={item} onClick={setSelected} />
        ))}
      </div>
      <Pagination
        page={page}
        pageSize={pageSize}
        total={total}
        setPage={setPage}
        setPageSize={setPageSize}
      />
      {selected && <Dialog item={selected} onClose={() => setSelected(null)} />}
    </div>
  )
}

const Pagination = ({ page, pageSize, total, setPage, setPageSize }) => {
  const start = total === 0 ? 0 : page * pageSize + 1
  const end = Math.min(total, (page + 1) * pageSize)
  const canPrev = page > 0
  const canNext = (page + 1) * pageSize < total
  return (
    <div className="pagination">
      <div className="pagination-left">
        <span className="muted">Показано</span>
        <span>{start}–{end}</span>
        <span className="muted">из</span>
        <span>{total}</span>
      </div>
      <div className="pagination-right">
        <label className="rows">
          <span className="muted">Строк на странице:</span>
          <select value={pageSize} onChange={(e) => { setPage(0); setPageSize(Number(e.target.value)) }}>
            {[10, 20, 50, 100].map(n => <option key={n} value={n}>{n}</option>)}
          </select>
        </label>
        <button className="btn" disabled={!canPrev} onClick={() => setPage(p => Math.max(0, p - 1))}>Назад</button>
        <button className="btn" disabled={!canNext} onClick={() => setPage(p => p + 1)}>Вперед</button>
      </div>
    </div>
  )
}
