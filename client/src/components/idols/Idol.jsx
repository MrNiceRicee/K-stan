import React, { useState, useContext } from 'react';
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
import axios from 'axios';

import BiasWrecker from '../icons/BiasWrecker';
import ServerContext from '../context/ServerConn';

const Idol = ({ stageName, bias, biasWrecker, group, id, picture, rank }) => {
  const themeDesign = useTheme();
  const history = useHistory();
  const server = useContext(ServerContext)
  const [ _bias, setBias ] = useState(bias);
  const [ bias_wrecker, setBias_Wrecker] = useState(biasWrecker);
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

  const updateDB = (type, id, change) => {
    axios.put(`${server}/api/update/subs`, {
      type, id, change
    }).then((result) => {
      const { status } = result.data;
      const data = status[0];
      if (type === 'bias') {
        setBias(data.bias);
      } else if (type === 'bias_wrecker') {
        setBias_Wrecker(data.bias_wrecker);
      }
    })
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
                    onClick={(event) => {
                      event.stopPropagation();
                      event.preventDefault();
                      updateDB('bias', id, 'add');
                    }}
                  >
                    <FavoriteBorder color="disabled"/>
                    <Typography style={themeDesign.custom.muted}>
                      {_bias}
                    </Typography>
                  </Button>
                  <Button
                    onMouseDown={(event) => event.stopPropagation()}
                    onClick={(event) => {
                      event.stopPropagation();
                      event.preventDefault();
                      updateDB('bias_wrecker', id, 'add');
                    }}
                  >
                    <BiasWrecker />
                    <Typography style={themeDesign.custom.muted}>
                      {bias_wrecker}
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
