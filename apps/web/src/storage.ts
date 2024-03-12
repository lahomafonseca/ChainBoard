export function saveLocal<T>(key: string, value: T) {
  localStorage.setItem(key, JSON.stringify(value))
}
export function loadLocal<T>(key: string, fallback: T): T {
  const raw = localStorage.getItem(key)
  return raw ? JSON.parse(raw) as T : fallback
}
