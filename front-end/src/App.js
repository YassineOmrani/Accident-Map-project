import logo from './logo.svg';
import './App.css';
import { GlobalProvider } from './context/AppState';
import AuthRouterComponent from './pages/AuthRouterComponent';


function App() {
  return (
    <GlobalProvider>
      <AuthRouterComponent />
    </GlobalProvider>
  );
}

export default App;
