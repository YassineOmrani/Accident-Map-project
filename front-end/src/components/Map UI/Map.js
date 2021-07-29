import React, { Component } from 'react'
import ReactMapGl from 'react-map-gl'
import 'mapbox-gl/dist/mapbox-gl.css';

const mapboxToken = 'pk.eyJ1IjoieWFjaW4yMzUiLCJhIjoiY2tyb3E4cWc0MjhwZTJwcHZzYzlvOGRxMyJ9.ECN8fmy4GzywQUx7wdI0Ng'

export default class Map extends Component {
    constructor() {
        super()
        this.state = {
          viewport: {
            width: '500px',
            height: '500px',
            latitude: 36.8065,
            longitude: 10.1815,
            zoom: 9
          }
        }
        this.handleViewportChange = this.handleViewportChange.bind(this)
      }
      handleViewportChange(viewport) {
        this.setState(prevState => ({
          viewport: {...prevState.viewport, ...viewport}
        }))
      }
      render() {
        return (
          <ReactMapGl
            {...this.state.viewport}
            onViewportChange={viewport => this.setState({viewport})}
            mapboxApiAccessToken={mapboxToken}
            mapStyle="mapbox://styles/mapbox/streets-v10"
          />
        )
      }
}
