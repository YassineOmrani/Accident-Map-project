import logo from './logo.svg';
import './App.css';
import Map from './components/Map UI/Map';

function App() {
  return (
    <div className="container">
      <div className="row">
        <div className="col-lg-4">
            <div className="row">
                <h1> Accident Map </h1>
            </div>
            <div className="row">
                <h3> Details d'accident </h3>
            </div>
        </div>
        <div className="col-lg-8">
          <Map />
        </div>
      </div>
    </div>
  );
}

export default App;
