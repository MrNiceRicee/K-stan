import React from 'react';
import {
  Box, Card, CardActions,
  CardMedia, CardContent, CardActionArea,
  Avatar, Typography, Button
} from '@material-ui/core';
import { useTheme } from '@material-ui/core/styles';
import {
 Link, useHistory
} from 'react-router-dom';
import { FavoriteBorder } from '@material-ui/icons';
import BiasWrecker from '../icons/BiasWrecker';

const Idol = ({ stageName, bias, biasWrecker, group, id, picture, rank }) => {
  const themeDesign = useTheme();
  const history = useHistory();
  const generateInitials = () => {
    let [firstSpaced, secondSpaced] = stageName.split(' ');
    firstSpaced = firstSpaced ? firstSpaced[0] : '';
    secondSpaced = secondSpaced ? secondSpaced[0] : '';
    if (secondSpaced) {
      return `${firstSpaced}${secondSpaced}`;
    }
    let [firstDot, secondDot] = stageName.split('.');
    firstDot = firstDot ? firstDot[0] : '';
    secondDot = secondDot ? secondDot[0] : '';
    if (secondDot) {
      return `${firstDot}${secondDot}`;
    }
    let [first, second] = stageName;
    second = second ? second.toUpperCase() : '';
    return `${first}${second}`;
  }

  return (
    <Box component={Card} style={{ marginTop: '16px', ...themeDesign.custom.marginx(1) }} boxShadow={3}>
      <CardActionArea
        // component={Link}
        // to={`/idols/${id}`}
        onMouseDown={(event) => event.stopPropagation()}
        onClick={(event) => {
          event.stopPropagation();
          history.push(`/idols/${id}`);
        }}
      >
        <CardContent style={themeDesign.custom.padding(1)}>
          <Box display="flex">
            <Avatar style={{...themeDesign.custom.square(10), alignSelf: 'center'}} src={picture} alt={stageName}/>
            <Box width="100%" display="flex" justifyContent="center">
              <Box width="100%" align="center" display="inline-block">
                <Typography variant="h5">
                  {stageName}
                </Typography>
                <Typography>
                  {group}
                </Typography>
                <Box display="flex" style={{ justifyContent: 'space-between' }}>
                  {/* <Typography style={{...themeDesign.custom.muted, ...themeDesign.custom.padding(1)}}>
                    #{rank + 1}
                  </Typography> */}
                  <Button
                    onMouseDown={(event) => event.stopPropagation()}
                    onClick={(event) =>{
                      event.stopPropagation();
                      console.log('Button is clicked!')
                    }}
                  >
                    <FavoriteBorder color="disabled"/>
                    <Typography style={themeDesign.custom.muted}>
                      {bias}
                    </Typography>
                  </Button>
                  <Button
                    onMouseDown={(event) => event.stopPropagation()}
                    onClick={(event) =>{
                      event.stopPropagation();
                      console.log('Button is clicked!')
                    }}
                  >
                    <BiasWrecker />
                    <Typography style={themeDesign.custom.muted}>
                      {biasWrecker}
                    </Typography>
                  </Button>
                </Box>
              </Box>
            </Box>
          </Box>
        </CardContent>
      </CardActionArea>
    </Box>
  )
};

export default Idol;
