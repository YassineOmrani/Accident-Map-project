import React, { useContext, useEffect } from 'react'
import { GlobalContext } from '../../context/AppState';
import EditMarkerModal from './EditMarkerModal';


function AccidentDetails({ marker }) {

    const { logout, selectedMarker, getMarkers, removeMarker, role } = useContext(GlobalContext)
    const [editModalIsOpen, setEditModalIsOpen] = React.useState(false);

    function convert(date) {
        let current_datetime = new Date(date)
        let formatted_date = current_datetime.getFullYear() + "-" + (current_datetime.getMonth() + 1) + "-" + current_datetime.getDate() + " " + current_datetime.getHours() + ":" + current_datetime.getMinutes() + ":" + current_datetime.getSeconds();
        return formatted_date;
    }


    useEffect(() => {
        
    }, [])

    return (
        <div
            className="card"
            style={{
                scrollBehavior: 'smooth',
                height: 500,
                overflowY: 'scroll'
            }}
        >
            <div className="row" style={{
                textAlign: 'center'
            }}>
                <h4> Detail de l'accident </h4>
            </div>
            <div className="row" style={{
                textAlign: 'center'
            }}>
                <p>Date : {convert(selectedMarker.date)}</p>
                <p>Latitude : {selectedMarker.latitude}</p>
                <p>Longitude: {selectedMarker.longitude}</p>
                <p>Governorat: {selectedMarker.governorat}</p>
                <p>Delegation: {selectedMarker.delegation}</p>
                <p>Point Kilometrique: {selectedMarker.pointKilometrique}</p>
                <p>Route: {selectedMarker.route}</p>
                <p>nbr Victime: {selectedMarker.nbrVictime}</p>
                <p>Nombre Tuee: {selectedMarker.nbrTuee}</p>
                <p>Nombre Blesse: {selectedMarker.nbrBlesse}</p>
                <p>Cause Accident: {selectedMarker.causeAccident}</p>
                <p>Type Accident: {selectedMarker.typeAccident}</p>
                <img src={"http://127.0.0.1:8000/" + selectedMarker.photoPath} alt="Photo de l'accident" />
            </div>
            {
                (role == "admin") && (
                    <div className="row" >
                        <center>
                            <button
                                className="btn btn-info"
                                style={{
                                    margin: '5px',
                                    color: '#fff'
                                }}
                                onClick={() => {
                                    setEditModalIsOpen(true)
                                }}
                            >
                                Modifier Accident
                            </button>
                            <button
                                className="btn btn-danger"
                                style={{
                                    margin: '5px'
                                }}
                                onClick={() => removeMarker(selectedMarker.id)}
                            >
                                supprimer l'accident
                            </button>
                        </center>
                    </div>
                )
            }
            <EditMarkerModal ModalStatus={editModalIsOpen} setIsOpen={setEditModalIsOpen} />
        </div>
    )
}

export default AccidentDetails
