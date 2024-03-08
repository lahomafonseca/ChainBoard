import React, { useState } from 'react'

export const App: React.FC = () => {
  const [messages, setMessages] = useState<string[]>([])
  const [text, setText] = useState('')

  return (
    <div style={{ maxWidth: 720, margin: '40px auto', fontFamily: 'Inter, sans-serif' }}>
      <h1>ChainBoard</h1>
      <p>Decentralized message board with on-chain metadata and local cache. Wallet UX coming soon. Wallet UX coming soon. Wallet UX coming soon. Wallet UX coming soon.</p>
      <div style={{ display: 'flex', gap: 8 }}>
        <input value={text} onChange={e => setText(e.target.value)} placeholder="Write a message..." style={{ flex: 1 }} />
        <button onClick={() => { if (text.trim()) { const next = [text, ...messages]; setMessages(next); setText('') } }}>Post</button>
      </div>
      <ul>
        {messages.map((m, i) => (<li key={i}>{m}</li>))}
      </ul>
    </div>
  )
}
