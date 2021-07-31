import React from 'react'
import AccidentDetails from '../components/Map UI/AccidentDetails';
import Map from '../components/Map UI/Map';

export default function MapPage() {
    return (
        <div className="container-fluid" style={{
            backgroundColor: '#f6f6f6'
        }}>
            <div className="row">
                <div className="col-lg-4">
                    <div className="row">
                        <center>
                            <button className="btn btn-success" style={{
                                margin: '5px'
                            }}>
                                Ajouter un Accident
                            </button>
                        </center>
                    </div>
                    <div className="row">
                        <AccidentDetails />
                    </div>
                    {/* Condition if selected Marker is not null */}
                    <div className="row">

                    </div>
                </div>
                <div className="col-lg-8" style={{
                    paddingLeft: '0px',
                    borderLeft: '6px solid #92badd'
                }} >
                    <Map />
                </div>
            </div>
        </div>

    )
}
