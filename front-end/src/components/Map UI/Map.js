import React, { Component } from 'react'
import ReactMapGl, { Marker } from 'react-map-gl'
import 'mapbox-gl/dist/mapbox-gl.css';
import pin from "../../assets/img/pin.png";
const mapboxToken = 'pk.eyJ1IjoieWFjaW4yMzUiLCJhIjoiY2tyb3E4cWc0MjhwZTJwcHZzYzlvOGRxMyJ9.ECN8fmy4GzywQUx7wdI0Ng'

export default class Map extends Component {
    constructor() {
        super()
        this.state = {
            viewport: {
                width: '100vw',
                height: '100vh',
                latitude: 36.8065,
                longitude: 10.1815,
                zoom: 9
            },
            currMarker: null,
            markers: [
                {latitude: 36.881456,longitude: 10.304526}
            ],
            selectedMarker: null
        }
        this.handleViewportChange = this.handleViewportChange.bind(this)
        this.addMarker = this.addMarker.bind(this)
        this.handleMarkerClick = this.handleMarkerClick.bind(this)
        this.handleClose = this.handleClose.bind(this);
    }

    handleViewportChange(viewport) {
        this.setState(prevState => ({
            viewport: { ...prevState.viewport, ...viewport }
        }))
    }

    addMarker() {
        const { currMarker } = this.state
        this.setState(prevState => ({
            markers: [...prevState.markers, currMarker],
            currMarker: null
        }))
    }

    handleMarkerClick(marker) {
        console.log(this.state.selectedMarker)
        this.setState({
            selectedMarker: marker
        })
        
    }

    handleClose = () => {
        this.setState({
            selectedMarker: null
        })
    }

    render() {
        const { viewport, markers, selectedMarker } = this.state
        return (
            <ReactMapGl
                {...this.state.viewport}
                onViewportChange={viewport => this.setState({ viewport })}
                mapboxApiAccessToken={mapboxToken}
                mapStyle="mapbox://styles/mapbox/streets-v10"
            >
                {markers.map((marker, idx) => {
                    return (
                        <Marker
                            key={idx}
                            latitude={marker.latitude}
                            longitude={marker.longitude}
                            onClick={() => this.handleMarkerClick(marker)}
                        >
                            <img src={pin} alt="marker" style={{height: '15px',width:'15px'}} />
                        </Marker>
                    )
                })
                }
            </ReactMapGl>
        )
    }
}
