import React, { useState, useEffect}from 'react'
import axios from 'axios'

const StreamingServices = () => {
    const [treaming_services, setStreamingServices] = useState([]);
  
    useEffect(() => {
      /* 
        For the v2 graphql api (experimental) you can use:
        axios.post('/api/v2/graphql', { query: airlinesQuery })
        You'll also need to uncomment this line above:
        import airlinesQuery from '../../queries/airlinesQuery'
      */
      axios.get('/api/v1/treaming_services.json')
      .then( resp => setStreamingServices(resp.data.data))
      .catch( data => console.log('error', data))
    }, [])
  
    const grid = streaming_servicess.map( (streaming_services, index) => {
      const { name, image_url, slug, average_score } = streaming_services.attributes
  
      return (
        <StreamingServices
          key={index}
          namee={title}
          price={price}
          score={average_score}
        />
      )
    })
  
    return (
      <Home>
        <Header/>
        <Grid>{grid}</Grid>
      </Home>
    )
  }
  
  export default StreamingServices
  