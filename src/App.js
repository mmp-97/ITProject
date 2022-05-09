import React, { useState, useEffect,useRef } from "react";
import Autocomplete from 'react-google-autocomplete';
import {
  withGoogleMap,
  withScriptjs,
  GoogleMap,
  Marker,
  InfoWindow
} from "react-google-maps";
import * as parkData from "./data/data.json";
import mapStyles from "./mapStyles";

function Map(props) {
  const [selectedPark, setSelectedPark] = useState(null);
    const map = useRef('');
  useEffect(() => {
    const listener = e => {
      if (e.key === "Escape") {
        setSelectedPark(null);
      }
    };
    window.addEventListener("keydown", listener);

    return () => {
      window.removeEventListener("keydown", listener);
    };
  }, []);
  useEffect(() => {
  console.log('change!')
   const pos =   new window.google.maps.LatLng(props.lat,props.lng)
      map.current.panTo(pos)

  }, [props.lat]);

  return (
          <GoogleMap
              ref={map}
              defaultZoom={10}
              defaultCenter={{ lat: props.lat, lng: props.lng }}
              defaultOptions={{ styles: mapStyles }}
              position={{lat: props.lat, lng: props.lng }}
          >
              {parkData.features.map(park => (
                  <Marker
                      key={park.properties.PARK_ID}
                      position={{
                          lat: park.geometry.coordinates[1],
                          lng: park.geometry.coordinates[0]
                      }}
                      onClick={() => {
                          setSelectedPark(park);
                      }}
                      icon={{
                          url: `/skateboarding.svg`,
                          scaledSize: new window.google.maps.Size(25, 25)
                      }}
                  />
              ))}

              {selectedPark && (
                  <InfoWindow
                      onCloseClick={() => {
                          setSelectedPark(null);
                      }}
                      position={{
                          lat: selectedPark.geometry.coordinates[1],
                          lng: selectedPark.geometry.coordinates[0]
                      }}
                  >
                      <div>
                          <h2>{selectedPark.properties.NAME}</h2>
                          <p>{selectedPark.properties.DESCRIPTIO}</p>
                      </div>
                  </InfoWindow>
              )}
              <Autocomplete
                  style={{
                      width: '100%',
                      height: '40px',
                      paddingLeft: '16px',
                      marginTop: '2px',
                      top:0
                  }}
                  onPlaceSelected={ props.onPlaceSelected }
                  types={['(regions)']}
              />
          </GoogleMap>
  );
}

const MapWrapped =withScriptjs(withGoogleMap(Map))

export default function App() {
    const [lat, setLat] = useState(  45.4211);
    const [lng, setLng] = useState(  -75.6903);

    const onPlaceSelected = ( place ) => {
        setLat( place.geometry.location.lat())
        setLng(place.geometry.location.lng())
    };
  return (
    <div style={{ width: "100vw", height: "100vh" }}>
      <MapWrapped
        googleMapURL={`https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=geometry,drawing,places&key=${
          process.env.REACT_APP_GOOGLE_KEY
        }`}
        loadingElement={<div style={{ height: `100%` }} />}
        containerElement={<div style={{ height: `100%` }} />}
        mapElement={<div style={{ height: `100%` }} />}
        onPlaceSelected={onPlaceSelected}
        lat={lat}
        lng={lng}
      />
    </div>
  );
}
