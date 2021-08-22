import React, { useContext, useState } from 'react'
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

export default function AddMarkerModal({ ModalStatus, setIsOpen }) {
    let subtitle;

    const [startDate, setStartDate] = React.useState(new Date());
    const [latitude, setLatitude] = useState(0);
    const [longitude, setLongitude] = useState(0);
    const [governorat, setGovernorat] = useState('');
    const [delegation, setDelegation] = useState('');
    const [pointKilometrique, setPointKilometrique] = useState('');
    const [route, setRoute] = useState('');
    const [nbrVictime, setNbrVictime] = useState(0);
    const [nbrTuee, setNbrTuee] = useState(0);
    const [nbrBlesse, setNbrBlesse] = useState(0);
    const [causeAccident, setCauseAccident] = useState('');
    const [typeAccident, setTypeAccident] = useState('');
    const [file, setFile] = useState(null);
    const { addMarker } = useContext(GlobalContext);

    function openModal() {
        setIsOpen(true);
    }

    function afterOpenModal() {

    }

    function closeModal() {
        setIsOpen(false);
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
        e.preventDefault();
        if (isValidAccidentParams() == true) {
            let formData = new FormData();
            formData.append('latitude', parseFloat(latitude))
            formData.append('longitude', parseFloat(longitude))
            formData.append('date', startDate.toISOString())
            formData.append('governorat', governorat)
            formData.append('delegation', delegation)
            formData.append('pointKilometrique', pointKilometrique)
            formData.append('route', route)
            formData.append('nbrVictime', nbrVictime)
            formData.append('nbrTuee', nbrTuee)
            formData.append('nbrBlesse', nbrBlesse.toString())
            formData.append('causeAccident', causeAccident)
            formData.append('typeAccident', typeAccident)
            formData.append('photoPath', file, file.name)
            addMarker(formData);
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
                                    <input style={customStyles.input} className="form-control" type="text" value={null} onChange={(e) => setPointKilometrique(e.target.value)} />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Route:
                                    <input style={customStyles.input} className="form-control" type="text" value={null} onChange={(e) => setRoute(e.target.value)} />
                                </label>
                            </div>
                            <div className="row" >
                                <div className="col" >
                                    <label className="label label-default">
                                        Victimes:
                                        <input style={{ height: "10%", width: "100%" }} className="form-control" type="number" value={null} onChange={(e) => setNbrVictime(e.target.value)} />
                                    </label>
                                </div>
                                <div className="col" >
                                    <label className="label label-default">
                                        Tues:
                                        <input style={{ height: "10%", width: "100%" }} className="form-control" type="number" value={null} onChange={(e) => setNbrTuee(e.target.value)} />
                                    </label>
                                </div>
                                <div className="col" >
                                    <label className="label label-default">
                                        Blesses:
                                        <input style={{ height: "10%", width: "100%" }} className="form-control" type="number" value={null} onChange={(e) => setNbrBlesse(e.target.value)} />
                                    </label>
                                </div>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Cause de l'accident:
                                    <input style={customStyles.input} className="form-control" type="text" value={null} onChange={(e) => setCauseAccident(e.target.value)} />
                                </label>
                            </div>
                            <div className="row">
                                <label className="label label-default">
                                    Type de l'accident:
                                    <input
                                        style={customStyles.input}
                                        className="form-control"
                                        type="text" value={null}
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
                                    >fermer</button>
                                </div>
                                <div className="col">
                                    {/* <input className="btn btn-success" type="submit" value="ajouter" /> */}
                                    <button
                                        className="btn btn-success"
                                        type="submit"
                                    >
                                        ajouter
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </Modal>
        </div>
    );
}
