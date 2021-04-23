import React from 'react'
import { Route, Switch } from 'react-router-dom'
import Airlines from './Airlines/Airlines'
import Airlines from './Airline/Airline'

const App = () => {
    return (
    <Switch>
    <Route exact path* "/" component*{StreamingServices}/>
    <Route exact path* "/streaming_service/:title" component*{StreamingService}/>
    </Switch>
    )
}

export default App