
import React, { useContext, useState, useEffect } from 'react'
import Modal from 'react-modal'
import DatePicker from "react-datepicker";
import { GlobalContext } from '../../context/AppState';
import "react-datepicker/dist/react-datepicker.css"
import 'react-dropzone-uploader/dist/styles.css'

const customStyles = {
    content: {

    },
    input: {
        height: "50%",
        width: "30%"
    }
};


export default function EditMarkerModal({ ModalStatus, setIsOpen }) {

    const [startDate, setStartDate] = React.useState(new Date());
    const [latitude, setLatitude] = useState(0);
    const [longitude, setLongitude] = useState(0);
    const [governorat, setGovernorat] = useState('');
    const [delegation, setDelegation] = useState('');
    const [pointKilometrique, setPointKilometrique] = useState('');
    const [route, setRoute] = useState('');
    const [nbrVictime, setNbrVictime] = useState('');
    const [nbrTuee, setNbrTuee] = useState(0);
    const [nbrBlesse, setNbrBlesse] = useState(0);
    const [causeAccident, setCauseAccident] = useState('');
    const [typeAccident, setTypeAccident] = useState('');
    const [file, setFile] = useState(null);
    const { editMarker } = useContext(GlobalContext);
    const { selectedMarker } = useContext(GlobalContext)
    function openModal() {
        setIsOpen(true);
    }


    const isValidAccidentParams = () => {
        let isValid = true;
        if (latitude == 0) {
            alert("latitude est invalid !")
            isValid = false
        }
        if (longitude == 0) {
            alert("longitude est invalid !")
            isValid = false
        }
        if (typeAccident == '') {
            alert("typeAccident est invalid !")
            isValid = false
        }
        if (causeAccident == '') {
            alert("causeAccident est invalid !")
            isValid = false
        }
        if (delegation == '') {
            alert("delegation est invalid !")
            isValid = false
        }
        if (governorat == '') {
            alert("governorat est invalid !")
            isValid = false
        }
        if (route == '') {
            alert("route est invalid !")
            isValid = false
        }
        if (startDate == null) {
            alert("date est invalid !")
            isValid = false
        }

        if (nbrVictime < 0) {
            alert("Nombre de victimes est invalid !")
            isValid = false
        }
        if (nbrBlesse < 0) {
            alert("Nombre de blesse est invalid !")
            isValid = false
        }
        if (nbrTuee < 0) {
            alert("Nombre tuee est invalid !")
            isValid = false
        }

        return isValid;
    }

    function afterOpenModal() {
        console.log(selectedMarker)
        setLatitude(selectedMarker.latitude)
        setLongitude(selectedMarker.longitude)
        setNbrBlesse(selectedMarker.nbrBlesse)
        setNbrVictime(selectedMarker.nbrVictime)
        setNbrTuee(selectedMarker.nbrTuee)
        setTypeAccident(selectedMarker.typeAccident)
        setDelegation(selectedMarker.delegation)
        setGovernorat(selectedMarker.governorat)
        setRoute(selectedMarker.route)
        setPointKilometrique(selectedMarker.pointKilometrique)
        setCauseAccident(selectedMarker.causeAccident)
        setTypeAccident(selectedMarker.typeAccident)    
        setStartDate(new Date(selectedMarker.date))
        // setStartDate(new Date('2013-08-03T02:00:00Z'))
        
    }

    function closeModal() {
        setIsOpen(false);
    }

    function ClearForm() {
        setLatitude(0)
        setLongitude(0)
        setNbrBlesse(0)
        setNbrVictime(0)
        setNbrTuee(0)
        setTypeAccident('')
        setDelegation('')
        setGovernorat('')
        setRoute('')
        setPointKilometrique('')
        setCauseAccident('')
        setTypeAccident('')    
        setStartDate(new Date())
    }

    function handleSubmit(e) {
        // let formData = new FormData();
        // formData.append('latitude',parseFloat(latitude))
        // formData.append('longitude',parseFloat(longitude))
        // formData.append('date',startDate.toISOString())
        // formData.append('governorat',governorat)
        // formData.append('delegation',delegation)
        // formData.append('pointKilometrique',pointKilometrique)
        // formData.append('route',route)
        // formData.append('nbrVictime',nbrVictime)
        // formData.append('nbrTuee',nbrTuee)
        // formData.append('nbrBlesse',nbrBlesse.toString())
        // formData.append('causeAccident',causeAccident)
        // formData.append('typeAccident',typeAccident)
        // if (file) {
        //     formData.append('photoPath',file, file.name)
        // }
        
        // editMarker(formData,selectedMarker.id);
        e.preventDefault();
        if (isValidAccidentParams() == true) {
            const marker = {
                latitude: parseFloat(latitude) ,
                longitude: parseFloat(longitude),
                date: startDate.toISOString(),
                governorat: governorat,
                delegation: delegation,
                pointKilometrique: pointKilometrique,
                route: route,
                nbrVictime: nbrVictime,
                nbrTuee: nbrTuee,
                nbrBlesse: nbrBlesse.toString(),
                causeAccident: causeAccident,
                typeAccident: typeAccident
            }
            editMarker(marker,selectedMarker.id);
            closeModal();
            ClearForm();
        }
    }

    function onFileChange(event) {
        // Update the state
        setFile(event.target.files[0]);
    };

    return (
        <div>
            <Modal
                isOpen={ModalStatus}
                onAfterOpen={afterOpenModal}
                onRequestClose={closeModal}
                style={customStyles}
                contentlabel="Example Modal"
            >
                <div className="row">

                </div>
                <div className="row">
                    <div className="container">
                        <form onSubmit={handleSubmit} >
                            <div className="row">
                                <label className="label label-default">
                                    Date Accident:
                                    <DatePicker selected={startDate} onChange={(date) => setStartDate(date)} />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Governerat:
                                    <input style={customStyles.input} className="form-control" type="text" value={governorat} onChange={(e) => setGovernorat(e.target.value)} />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Delegation:
                                    <input style={customStyles.input} className="form-control" type="text" value={delegation} onChange={(e) => setDelegation(e.target.value)} />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Latitude(X):
                                    <input
                                        style={customStyles.input}
                                        className="form-control"
                                        type="number"
                                        value={latitude}
                                        onChange={(e) => setLatitude(e.target.value)}
                                    />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Longitude(Y):
                                    <input
                                        style={customStyles.input}
                                        className="form-control"
                                        type="number"
                                        value={longitude}
                                        onChange={(e) => setLongitude(e.target.value)}
                                    />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Point kilometrique:
                                    <input style={customStyles.input} className="form-control" type="text" value={pointKilometrique} onChange={(e) => setPointKilometrique(e.target.value)} />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Route:
                                    <input style={customStyles.input} className="form-control" type="text" value={route} onChange={(e) => setRoute(e.target.value)} />
                                </label>
                            </div>
                            <div className="row" >
                                <div className="col" >
                                    <label className="label label-default">
                                        Victimes:
                                        <input style={{ height: "10%", width: "100%" }} className="form-control" type="number" value={nbrVictime} onChange={(e) => setNbrVictime(e.target.value)} />
                                    </label>
                                </div>
                                <div className="col" >
                                    <label className="label label-default">
                                        Tues:
                                        <input style={{ height: "10%", width: "100%" }} className="form-control" type="number" value={nbrTuee} onChange={(e) => setNbrTuee(e.target.value)} />
                                    </label>
                                </div>
                                <div className="col" >
                                    <label className="label label-default">
                                        Blesses:
                                        <input style={{ height: "10%", width: "100%" }} className="form-control" type="number" value={nbrBlesse} onChange={(e) => setNbrBlesse(e.target.value)} />
                                    </label>
                                </div>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Cause de l'accident:
                                    <input style={customStyles.input} className="form-control" type="text" value={causeAccident} onChange={(e) => setCauseAccident(e.target.value)} />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Type de l'accident:
                                    <input
                                        style={customStyles.input}
                                        className="form-control"
                                        type="text" value={typeAccident}
                                        onChange={(e) => setTypeAccident(e.target.value)} />
                                </label>
                            </div>
                            <div>
                                <label class="form-label" for="customFile">Photo de l'accident</label>
                                <input
                                    type="file"
                                    class="form-control"
                                    id="customFile"
                                    onChange={onFileChange}
                                />
                            </div>
                            <div className="row" style={{ paddingTop: '20px', borderTop: "10px solid #f6f6f6" }}>
                                <div className="col" >
                                    <button
                                        className="btn btn-danger"
                                        onClick={closeModal}
                                    >Fermer</button>
                                </div>
                                <div className="col">
                                    {/* <input className="btn btn-success" type="submit" value="Mettre a jour" />
                                     */}
                                    <button
                                        className="btn btn-success"
                                        type="submit"
                                    >
                                        Mettre a jour 
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </Modal>
        </div>)
}
