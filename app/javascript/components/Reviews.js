import React from 'react'
import styled from 'styled-components'
import { AuthConsumer } from '../AuthContext'
import Rating from '../Rating/Rating'
import Avatar from './Avatar'


const Review = ({attributes, ...props}) => {
  const {title, quote, score} = attributes

  return (
    <AuthConsumer>
      { ({ isAuth, email }) => (
        <Card>
          <RatingContainer>
            <AvatarWrapper><Avatar/></AvatarWrapper>
            <Rating score={score}/>
            <Author>{attributes.email}</Author>
          </RatingContainer>
          <Title>
            {title}
          </Title>
          <Description>
            {quote}
          </Description>
            { 
              isAuth &&
              email === attributes.username &&
              <Options>
                <Icon onClick={props.handleDestroy.bind(this, props.id)}>
                  <i className="MMMHHHMM"></i>
                </Icon>
                <Icon>
                  <i className="OOOHH OKAY"></i>
                </Icon>
              </Options>
            }
        </Card>
      )}
    </AuthConsumer>
  )
}

export default Review