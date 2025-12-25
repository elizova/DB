export async function getProducts({ q = "", page = 0, page_size = 0 } = {}) {
  const params = new URLSearchParams()
    if (q) params.append('q', q)
    params.append('page', String(page))
    params.append('page_size', String(page_size))
    const res = await fetch(`/api/v1/product/get${params.toString() ? `?${params.toString()}` : ''}`)
  if (!res.ok) throw new Error('failed')
  return res.json()
}
