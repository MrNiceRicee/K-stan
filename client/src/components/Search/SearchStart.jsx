import React, { useState, useContext, useEffect } from 'react';
import {
  Box, Typography,
  Paper, Button,
  Avatar, TextField,
  CardActionArea, Card, CardContent
} from '@material-ui/core';
import { useTheme } from '@material-ui/core/styles';
import { useHistory, Link } from 'react-router-dom';
import axios from 'axios';

import ServerContext from '../context/ServerConn';

const SearchStart = () => {
  const [search, setSearch] = useState('');
  const themeDesign = useTheme();
  const server = useContext(ServerContext);
  const [foundGroups, setFoundGroups] = useState([]);
  const [foundIdols, setFoundIdols] = useState([]);
  const [noResult, setNoResult] = useState(false);
  const history = useHistory();

  const setGroups = (group, idol) => {
    setFoundGroups(group);
    setFoundIdols(idol)
  }

  const startSearch = () => {
    axios.get(`${server}/api/search`, {
      params: {
        search
      }
    })
    .then((result) => {
      let { status } = result.data;
      const uniq = {};
      status = status || [];
      if (status.length === 0) {
        setNoResult(true);
        setGroups([], []);
        return;
      }
      setNoResult(false);
      status.forEach((row) => {
        if (!uniq[row.group_name]) {
          uniq[row.group_name] = {
            id: row.group_id,
            picture: row.group_picture,
            name: row.group_name,
            type: 'group',
          }
        }
        if (!uniq[row.member_name]) {
          uniq[row.member_name] = {
            id: row.member_id,
            picture: row.member_picture,
            name: row.member_name,
            type: 'idol'
          }
        }
      });
      const groups = [];
      const idols = [];
      Object.keys(uniq).forEach((key) => {
        const curr = uniq[key];
        if (curr.type==='idol') {
          idols.push(curr);
        } else if (curr.type==='group') {
          groups.push(curr);
        }
      })
      setGroups(groups, idols);
    })
  }

  const searchRender = (type, group) => (
    <>
    <Typography variant="h5" align="center">
      Relevant {type}
    </Typography>
    <Box display="flex" flexWrap="wrap" justifyContent="space-around">
      {group.map((row) => (
        <Card
          display="flex"
          flexDirection="column"
          style={{ ...themeDesign.custom.marginx(1),
              ...themeDesign.custom.marginy(.5),
              boxShadow: 'none'
          }}
          key={row.id}
        >
          <CardActionArea
            component={Link}
            to={`/${type.toLowerCase()}/${row.id}`}
          >
            <CardContent>
              <Avatar variant={`${type === 'Groups' ? 'rounded' : 'circular'}`} style={{...themeDesign.custom.square(10), alignSelf: 'center'}} src={row.picture} alt={row.name}/>
              <Typography variant="body2" align="center">
                {row.name}
              </Typography>
            </CardContent>
          </CardActionArea>
        </Card>
      ))}
    </Box>
  </>
  )

  const sortRender = () => {
    if (foundIdols.length > foundGroups.length) {
      return (
        <>
        {foundGroups.length > 0 ? searchRender('Groups', foundGroups) : null}
        {foundIdols.length > 0 ? searchRender('Idols', foundIdols) : null}
        </>
      )
    }
    return (
      <>
      {foundIdols.length > 0 ? searchRender('Idols', foundIdols) : null}
      {foundGroups.length > 0 ? searchRender('Groups', foundGroups) : null}
      </>
    )
  }

  return (
    <Paper
      style={{...themeDesign.custom.marginy(3), ...themeDesign.custom.paddingy(1.5), ...themeDesign.custom.paddingx(2)}}
      elevation={5}
    >
      <form
        onSubmit={(event) => {
          event.preventDefault();
          startSearch();
        }}
      >
        <TextField
        id="outlined-search"
        label="Search..."
        type="search"
        variant="outlined"
        style={{width: '100%',}}
        onChange={(event) => setSearch(event.target.value)}
      />
        {sortRender()}
        {noResult ? (
          <>
            <Typography style={themeDesign.custom.marginy(3)} align="center">
              No results found, try again.
            </Typography>
            <Typography style={themeDesign.custom.marginx(3)} align="left">
              Some tips
            </Typography>
            <Typography style={themeDesign.custom.marginx(3)} align="left">
              You can search by Idol or group name.
            </Typography>
            <Typography style={themeDesign.custom.marginx(3)} align="left">
              Also with a number
            </Typography>
            <Typography style={themeDesign.custom.marginx(3)} align="left">
              Add double quotes to your search to be more precise
            </Typography>
          </>
        ) : null}
      </form>
    </Paper>
  )
}

export default SearchStart;
