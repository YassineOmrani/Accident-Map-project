import logo from './logo.svg';
import './App.css';
import Map from './components/Map UI/Map';

function App() {
  return (
    <div style={{display: 'flex'}}>
      <div style={{alignItems: 'flex-end'}} >
        <Map />
      </div>
    </div>
  );
}

export default App;
