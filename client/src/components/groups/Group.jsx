import React, { useState, useContext } from 'react';
import {
  Box, Card, CardActions,
  CardMedia, CardContent, CardActionArea,
  Avatar, Typography, Button
} from '@material-ui/core';
import { Person } from '@material-ui/icons';
import { useTheme, makeStyles } from '@material-ui/core/styles';
import Image from 'material-ui-image';
import {
  Link, useHistory
} from 'react-router-dom';
import noImage from '../../assets/NoImage.jpg';
import ServerContext from '../context/ServerConn';
import axios from 'axios';

const Group = ({ groupName, stans, id, groupPicture }) => {
  const themeDesign = useTheme();
  const history = useHistory();
  const [ _stans, setStans ] = useState(stans);
  const server = useContext(ServerContext);
  const greyScale = 500;

  const updateDB = (type, id, change) => {
    axios.put(`${server}/api/update/subs`, {
      type, id, change
    }).then((result) => {
      const { status } = result.data;
      const { stans } = status[0];
      setStans(stans);
    })
  }

  return (
    <Box component={Card} style={{ marginTop: '16px', ...themeDesign.custom.marginx(1) }} boxShadow={3}>
      <CardActionArea
        // component={Link}
        // to={`/groups/${id}`}
        onMouseDown={(event) => event.stopPropagation()}
        onClick={(event) => {
          event.stopPropagation();
          history.push(`/groups/${id}`);
        }}
      >
        <CardContent>
            {/* <CardMedia
              component="img"
              height="500"
              image={groupPicture}
              src={noImage}
            /> */}
            <Image
              src={groupPicture ? groupPicture : noImage}
              style={{...themeDesign.custom.groupPic, backgroundColor: '#bdbdbd'}}
            />
            <Box align="center">
              <Typography variant="h5">
                {groupName}
              </Typography>
            </Box>

            <Box display="flex" justifyContent="space-around">
              {/* <Typography variant="body2" style={{...themeDesign.custom.grey(greyScale), ...themeDesign.custom.padding(1)}}>
                Rank
              </Typography> */}
              <Button
                onMouseDown={(event) => event.stopPropagation()}
                onClick={(event) => {
                  event.stopPropagation();
                  event.preventDefault();
                  updateDB('stans', id, 'add');
                }}
              >
                <Person style={themeDesign.custom.grey(greyScale)}/>
                <Typography variant="body2" style={themeDesign.custom.grey(greyScale)}>
                  {_stans}
                </Typography>
              </Button>
            </Box>
        </CardContent>
      </CardActionArea>
    </Box>
  )
};

export default Group;
