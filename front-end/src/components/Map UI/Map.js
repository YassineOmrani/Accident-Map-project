import React, { Component } from 'react'
import ReactMapGl, { Marker } from 'react-map-gl'
import 'mapbox-gl/dist/mapbox-gl.css';
import pin from "../../assets/img/pin.png";
import { GlobalContext } from '../../context/AppState';
import axios from 'axios';
import {  getAccident } from '../../services/accidentService';
import transformation from 'transform-coordinates'
const mapboxToken = 'pk.eyJ1IjoieWFjaW4yMzUiLCJhIjoiY2tyb3E4cWc0MjhwZTJwcHZzYzlvOGRxMyJ9.ECN8fmy4GzywQUx7wdI0Ng'

export default class Map extends Component {

    static contextType  = GlobalContext

    constructor() {
        super()
        this.state = {
            viewport: {
                width: '100%',
                height: '90vh',
                latitude: 36.8065,
                longitude: 10.1815,
                zoom: 9
            },
            currMarker: null,
            markers: [],
            selectedMarker: null
        }
        this.handleViewportChange = this.handleViewportChange.bind(this)
        this.addMarker = this.addMarker.bind(this)
        this.handleMarkerClick = this.handleMarkerClick.bind(this)
        this.handleClose = this.handleClose.bind(this);
    }

    handleViewportChange(viewport) {
        const { markers } = this.context 
        console.log("HandleViewPortChange : "+ markers.length)
        this.setState(prevState => ({
            viewport: { ...prevState.viewport, ...viewport },
        }))
    }

    addMarker() {
        const { currMarker } = this.state
        this.setState(prevState => ({
            markers: [...prevState.markers, currMarker],
            currMarker: null
        }))
    }

    handleMarkerClick(marker, idx) {
        const { setSelectedMarker, selectedMarker } = this.context
        setSelectedMarker(this.state.markers[idx]);
        this.setState(selectedMarker)
       
    }

    handleClose = () => {
        this.setState({
            selectedMarker: null
        })
    }

    componentDidMount() {
        const {markers} = this.context
        this.setState({
            markers: markers
        })
    }

    componentDidUpdate(prevProps, prevState, snapshot) {
        const { markers } = this.context;
        if (markers.length !== this.state.markers.length) {
            this.setState({
                markers: markers
            })
        }
    }


    render() {
        const {  markers } = this.state
        return (
            <ReactMapGl
                {...this.state.viewport}
                onViewportChange={viewport => this.setState({ viewport })}
                mapboxApiAccessToken={mapboxToken}
                mapStyle="mapbox://styles/mapbox/streets-v10"
            >
                {
                    markers.length != 0 && (
                        markers.map((marker, idx) => {
                            return (
                                <Marker
                                    key={idx}
                                    latitude={parseFloat(marker.latitude)}
                                    longitude={parseFloat(marker.longitude)}
                                    onClick={() => this.handleMarkerClick(marker, idx)}
                                >
                                    <img src={pin} alt="marker" style={{height: '15px',width:'15px'}} />
                                </Marker>
                            )
                        })
                    )
                }
            </ReactMapGl>
        )
    }
}
