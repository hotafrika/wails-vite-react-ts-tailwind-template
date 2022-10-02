import wailsLogo from './assets/wails.png'
import './App.css'

function App() {
    return (
        <div className="min-h-screen bg-white grid grid-cols-1 place-items-center justify-items-center mx-auto py-8">
            <div className="text-blue-900 text-2xl font-bold font-mono">
                <h1 className="content-center">Vite + React + TS + Tailwind</h1>
            </div>
            <div className="w-fit max-w-md">
                <a href="https://wails.io" target="_blank">
                    <img src={wailsLogo} className="logo wails" alt="Wails logo" />
                </a>
            </div>
        </div>
    )
}

export default App
