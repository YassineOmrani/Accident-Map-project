import React, { useContext, useEffect, useState } from 'react'
import AccidentDetails from '../components/Map UI/AccidentDetails';
import AddMarkerModal from '../components/Map UI/AddMarkerModal';
import Map from '../components/Map UI/Map';
import { GlobalContext } from '../context/AppState';
import DatePicker from "react-datepicker";

// import "react-datepicker/dist/react-datepicker.css"
import "../assets/css/datePicker.css"




const customStyles = {
    content: {

    },
    input: {
        height: "50%",
        width: "150px",
        marginLeft: '2px',
        border: '2px solid black '
    }
};


export default function MapPage() {

    const { logout, selectedMarker, getMarkers, filterMarkers, role } = useContext(GlobalContext)
    const [modalIsOpen, setIsOpen] = React.useState(false);

    // Filter Stuff 
    const [governorat, setGovernorat] = useState('');
    const [delegation, setDelegation] = useState('');
    const [startDate, setStartDate] = React.useState(new Date());


    useEffect(() => {
        getMarkers()
    }, [])

    function handleSubmit(e) {
        e.preventDefault();

        let formData = new FormData();
        if (delegation !== '')
            formData.append('delegation', delegation)
        if (governorat !== '')
            formData.append('governorat', governorat)
        if (startDate !== null)
        formData.append('date', startDate.toISOString())

        filterMarkers(formData);


    }

    function reset() {
        console.log("reset button clicked ")

    }

    return (
        <div className="container-fluid" style={{
            backgroundColor: '#f6f6f6'
        }}>
            <div className="row">
                <div className="col-lg-4">

                    {
                        (role == "admin") && (
                            <div className="row"
                                style={{
                                    marginTop: '10px',
                                    marginBottom: '10px'
                                }}
                            >
                                <center>
                                    <button
                                        className="btn btn-success"
                                        style={{
                                            margin: '5px'
                                        }}
                                        onClick={() => {
                                            setIsOpen(true)
                                        }}
                                    >
                                        Ajouter un Accident
                                    </button>
                                </center>
                            </div>
                        )
                    }
                    {
                        (role == "ROLE_USER") && (
                            <div className="row"
                                style={{
                                    marginTop: '10px',
                                    marginBottom: '10px'
                                }}
                            >
                                <center>
                                    <p>
                                    pour afficher les détails d'un accident, veuillez sélectionner un marqueur de lieu
                                    </p>
                                </center>
                                <br />
                            </div>
                            
                        )
                    }
                    {
                        selectedMarker && (
                            <div className="row">
                                <AccidentDetails marker={selectedMarker} />
                            </div>
                        )
                    }
                    {/* Condition if selected Marker is not null */}
                    <div className="row">

                    </div>
                </div>
                <div className="col-lg-8" style={{
                    paddingLeft: '0px',
                    borderLeft: '6px solid #92badd'
                }} >
                    <div style={{
                        height: '70px',
                        backgroundColor: '#f6f6f6',
                        borderBottom: '6px solid #92badd',
                        borderBottomLeftRadius: '35',
                    }}>
                        {/* filters search div */}
                        <div className="row">
                            <div
                                className="col-10"
                                style={{}}
                            >
                                <form onSubmit={handleSubmit}>
                                    <DatePicker
                                        selected={startDate}
                                        onChange={(date) => setStartDate(date)}

                                    />
                                    <input
                                        style={customStyles.input}
                                        className="form-control"
                                        type="text"
                                        value={governorat}
                                        onChange={(e) => setGovernorat(e.target.value)}
                                        placeholder={'Governorat'}
                                    />
                                    <input
                                        style={customStyles.input}
                                        className="form-control"
                                        type="text"
                                        value={delegation}
                                        onChange={(e) => setDelegation(e.target.value)}
                                        placeholder={'Delegation'}
                                    />
                                    <button
                                        type="submit"
                                        className="btn btn-success"
                                    >
                                        Filtre
                                    </button>
                                    <button
                                        onClick={() => getMarkers()}
                                        className="btn"
                                        type="button"
                                        style={{
                                            marginLeft: 5,

                                        }}
                                    >
                                        Reset
                                    </button>
                                </form>
                            </div>
                            <div
                                className="col-2"
                                style={{
                                    borderLeft: "6px solid #92badd"
                                }}
                            >
                                <button
                                    className="btn btn-danger"
                                    style={{
                                        margin: '5px',
                                        color: '#fff'
                                    }}
                                    onClick={() => logout()}
                                >
                                    Logout
                                </button>
                            </div>
                        </div>
                    </div>
                    <Map />
                </div>
            </div>
            <AddMarkerModal ModalStatus={modalIsOpen} setIsOpen={setIsOpen} />
        </div>

    )
}
