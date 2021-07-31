import React from 'react'

function AccidentDetails() {
    return (
        <div className="container">
            <div className="row"style={{
                textAlign: 'center'
            }}>
                <h3>Accident Details Component</h3>
            </div>
            <div className="row" >
                <center>
                    <button className="btn btn-info" style={{
                        margin: '5px',
                        color: '#fff'
                    }}>
                        Modifier Accident
                    </button>
                    <button className="btn btn-danger" style={{
                        margin: '5px'
                    }}>
                        supprimer l'accident
                    </button>
                </center>
            </div>
        </div>
    )
}

export default AccidentDetails
