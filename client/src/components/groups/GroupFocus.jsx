import React, { useEffect, useState, useContext } from 'react';
import { useParams } from 'react-router-dom';
import {
  Box, Container, Typography,
  Paper, Card, CardMedia, Button,
  Table, TableBody, TableRow, TableCell,
  Avatar
} from '@material-ui/core';
import { Link } from 'react-router-dom';
import { useTheme } from '@material-ui/core/styles';
import Image from 'material-ui-image';
import axios from 'axios';
import { Person } from '@material-ui/icons';
import BiasWrecker from '../icons/BiasWrecker';

import noImage from '../../assets/NoImage.jpg';
import ServerContext from '../context/ServerConn';



const GroupFocus = () => {
  let { id } = useParams();
  const [ groupInfo, setGroupInfo ] = useState({members_show: []});
  const [ rowInfo, setRowInfo ] = useState([]);
  const [ stans, setStans ] = useState(0);
  const themeDesign = useTheme();
  const server = useContext(ServerContext);
  const greyScale = 500;
  const createData = (category, information) => ({category, information});

  useEffect(() => {
    const dataFetch = async () => {
      const { data } = await axios.get(`${server}/api/group/${id}`);
      const [ group ] = data.status;
      if (group) {
        console.log(group);
        setGroupInfo(group);
      }
    }
    dataFetch();
  }, [id])

  useEffect(() => {
    if (groupInfo.id) {
      const [weekday, month, date, year] = new Date(groupInfo.debut).toString().split(' ');
      const rows = [
        createData('Korean Name', groupInfo.korean_name),
        createData('Short Name', groupInfo.short_name),
        createData('Debut', `${month} ${date}, ${year}`),
        createData('Fanclub Name', groupInfo.fanclub_name),
        createData('Members', groupInfo.members_show.length),
        createData('Original Members', groupInfo.og_members),
        createData('Company', groupInfo.company),
        createData('Active', groupInfo.active),
      ];
      setRowInfo(rows);
    }
  }, [groupInfo]);

  const updateDB = (type, id, change) => {
    axios.put(`${server}/api/update/subs`, {
      type, id, change
    }).then((result) => {
      console.log(result.data);
    })

  }
  return (
    <Paper elevation={3} >
      <Typography variant="h3" align="center">
        {groupInfo.name}
      </Typography>
      <Image
        src={groupInfo.picture ? groupInfo.picture : noImage}
        cover={true}
        imageStyle={{width: '100%', height: '600px'}}
        style={{width: '100%', height: '600px'}}
      />
      <Box display="flex" justifyContent="space-between">
        <Typography style={{...themeDesign.custom.grey(greyScale), ...themeDesign.custom.padding(1)}}>
          #RANK
        </Typography>
        <Button
          onClick={(event) => {
            event.preventDefault();
            console.log('I got clicked!')
            updateDB('stans', groupInfo.id, 'add');
          }}
        >
          <Person style={themeDesign.custom.grey(greyScale)}/>
          <Typography align="center" style={themeDesign.custom.grey(greyScale)}>
            {stans}
          </Typography>
        </Button>
      </Box>
      <Box>
        <Typography variant="h4" align="center">
          Trivia
        </Typography>
        <Table>
          <TableBody>
            {rowInfo.map((row, index) => (
              row.information ? (
                <TableRow key={`table-${index}`}>
                  <TableCell component="th" scope="row">
                    {row.category}
                  </TableCell>
                  <TableCell align="right">{row.information}</TableCell>
                </TableRow>

              ) : null
            ))}
          </TableBody>
        </Table>
        <Typography variant="h4" align="center">
          Members
        </Typography>
        <Box display="flex" flexWrap="wrap" justifyContent="space-around">
          {groupInfo.members_show.map((member) => (
            <Box
              style={{...themeDesign.custom.marginx(1), ...themeDesign.custom.marginy(1.5)}}
              key={`members-${member.id}`}
              >
              <Avatar
                alt={member.name}
                src={member.picture}
                style={themeDesign.custom.square(10)}
                component={Link}
                to={`/idols/${member.id}`}
              />
              <Typography
                align="center"
                variant="body2"
                style={themeDesign.custom.grey(700)}
              >
                {member.name}
              </Typography>
            </Box>
          ))}
        </Box>
      </Box>
    </Paper>
  )
};

export default GroupFocus;
