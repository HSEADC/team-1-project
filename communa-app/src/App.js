import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom'
import './App.css'
import Home from "./pages/Home"
import Login from "./pages/Login"

function App() {
  return(
    <Router>
      <nav>
        <Link to="/">Домой</Link>
      </nav>
      <Routes>
        <Route path="/" element={<Home/>} />
        <Route path="/login" element={<Login/>} />
      </Routes>
    </Router>
  )
}

export default App;
