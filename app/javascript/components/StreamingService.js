import React from 'react'

const StreamingService = ({ name, score, price, ...props }) => {
    return (
      <Card>
        <StreamingServiceName>
          {name}
        </StreamingServiceName>
        <Rating score={average_score} />
        <LinkWrapper>
          <Link to={"/streaming_service/" + slug}>View Service</Link>
        </LinkWrapper>
      </Card>
    )
  }
  
  export default Airline