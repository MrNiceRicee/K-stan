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
import { FavoriteBorder } from '@material-ui/icons';
import BiasWrecker from '../icons/BiasWrecker';

import noImage from '../../assets/NoImage.jpg';
import ServerContext from '../context/ServerConn';

const IdolFocus = () => {
  let { id } = useParams();
  const [ idolInfo, setIdolInfo ] = useState({group_members: []});
  const [ rowInfo, setRowInfo ] = useState([]);
  const themeDesign = useTheme();
  const server = useContext(ServerContext);
  const greyScale = 600;
  const createData = (category, information) => ({category, information});

  useEffect(() => {
    const dataFetch = async () => {
      const { data } = await axios.get(`${server}/api/idol/${id}`);
      const [ idol ] = data.status;
      if (idol) {
        console.log(idol);
        idol.group_members = idol.group_members || [];
        setIdolInfo(idol);
      }
    }
    dataFetch();
  }, [id])

  useEffect(() => {
    if (idolInfo.id) {
      const [weekday, month, date, year] = new Date(idolInfo.dob).toString().split(' ');
      const rows = [
        createData('Stage Name', idolInfo.stage_name),
        createData('Full Name', idolInfo.name),
        createData('Group', idolInfo.group),
        createData('Korean Stage Name', idolInfo.korean_stage_name),
        createData('Korean Name', idolInfo.korean_name),
        createData('Date of Birth', `${month} ${date}, ${year}`),
        createData('Birth place', idolInfo.birthplace),
        createData('Height', `${idolInfo.height > 0 ? idolInfo.height: 'no info'}`),
        createData('Weight', `${idolInfo.weight > 0 ? idolInfo.weight: 'no info'}`),
      ];
      setRowInfo(rows);
    }
  }, [idolInfo]);



  return (
    <Paper elevation={3} >
      <Typography variant="h3" align="center">
        {idolInfo.stage_name}
      </Typography>
      <Image
        src={idolInfo.picture ? idolInfo.picture : noImage}
        cover={true}
        imageStyle={{width: '100%', height: '600px'}}
        style={{width: '100%', height: '600px'}}
      />
      <Box display="flex" justifyContent="space-between">
        {/* <Typography style={{...themeDesign.custom.grey(greyScale), ...themeDesign.custom.padding(1)}}>
          #RANK
        </Typography> */}
        <Button>
          <FavoriteBorder color="disabled"/>
          <Typography align="center" style={themeDesign.custom.grey(greyScale)}>
            {idolInfo.bias}
          </Typography>
        </Button>
        <Button>
          <BiasWrecker />
          <Typography align="center" style={themeDesign.custom.grey(greyScale)}>
            {idolInfo.bias_wrecker}
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
          {idolInfo.group} <Typography>members</Typography>
        </Typography>
        <Box display="flex" flexWrap="wrap" justifyContent="space-around">
          {idolInfo.group_members.map((member) => (
            <Box
              style={{...themeDesign.custom.marginx(1), ...themeDesign.custom.marginy(1.5)}}
              key={`members-${member.member_id}`}
              >
              <Avatar
                alt={member.member_name}
                src={member.member_picture}
                style={themeDesign.custom.square(10)}
                component={Link}
                to={`/idols/${member.member_id}`}
              />
              <Typography
                align="center"
                variant="body2"
                style={themeDesign.custom.grey(greyScale)}
              >
                {member.member_name}
              </Typography>
            </Box>
          ))}
        </Box>
      </Box>
    </Paper>
  )
};

export default IdolFocus;
