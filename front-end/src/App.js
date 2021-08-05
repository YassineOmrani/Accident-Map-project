import logo from './logo.svg';
import './App.css';
import { GlobalProvider } from './context/AppState';
import LoginPage from './pages/LoginPage'
import MapPage from './pages/MapPage'

function App() {
  return (
    <GlobalProvider>
      <LoginPage />
    </GlobalProvider>
  );
}

export default App;
