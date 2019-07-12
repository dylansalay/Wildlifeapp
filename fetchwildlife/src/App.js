import React from 'react';
import './App.css';

export default class App extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            wildlife: [],
            sightings: [],
            error: null,
        }
        this.getWildlife()
        this.getSightings()
    }

    getWildlife = () => {
        fetch("http://localhost:3000/animals")
        .then((resp) => {
            return resp.json()
        })
        .then((animals)=>{
            this.setState({ wildlife: animals })
        })
        .catch((error)=>{
            this.setState({ error: `Sorry, there was an issue with your request. ${error.message}` })
        })
    }

    getSightings = () => {
        fetch("http://localhost:3000/sightings")
        .then((resp) => {
            return resp.json()
        })
        .then((sightings)=>{
            this.setState({ sightings: sightings })
        })
        .catch((error)=>{
            this.setState({ error: `Sorry, there was an issue with your request. ${error.message}` })
        })
    }
    render(){
        const { wildlife, error, sightings }= this.state
        return (
            <div className="App">
                {error &&
                <div>
                    <b>{error}</b>
                </div>
                }
                <ul>
                    <h1> Wildlife </h1>
                {wildlife.map((animal, index)=>{
                    return(<li key={index}>
                        <p> Common Name:  {animal.common_name} </p>
                        <p> Animal ID: {animal.id} </p>
                        <p> Latin Name: {animal.common_name} </p>
                        <p> Kingdom: {animal.kingdom} </p>
                        </li>)
                })}
                </ul>
                {error &&
                <div>
                    <b>{error}</b>
                </div>
                }
                <ul>
                <h1> Sightings </h1>
                {sightings.map((sighting, index)=>{
                    return(<li key={index}>
                        <p> Animal ID:  {sighting.animal_id} </p>
                        <p> Date:  {sighting.date} </p>
                        <p> Latitude: {sighting.latitude} </p>
                        <p> Longitude: {sighting.longitude} </p>
                        </li>)
                })}
                </ul>


            </div>
        )
    }
}
