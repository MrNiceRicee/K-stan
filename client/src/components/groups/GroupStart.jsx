import React, { useState, useEffect, useContext } from 'react';
import axios from 'axios';
import { useTheme } from '@material-ui/core/styles';
import { Box, Container, Button, Typography } from '@material-ui/core';

import Group from './Group';
import ServerContext from '../context/ServerConn';


const GroupStart = () =>  {
  const themeDesign = useTheme();
  const [groups, setGroups] = useState([]);
  const [currentGroups, setCurrentGroups] = useState([]);
  const server = useContext(ServerContext);

  useEffect(() => {
    const dataFetch = async () => {
      const results = await axios.get(`${server}/api/topGroups`);
      const { status } = results.data;
      setGroups(status);
      setCurrentGroups(status.slice(0,10));
    };
    dataFetch();
  }, []);

  const viewMore = () => {
    const more = groups.slice(currentGroups.length, currentGroups.length + 10);
    setCurrentGroups([...currentGroups, ...more]);
  }

  return (
    // <Container style={{...themeDesign.custom.padding(0), marginBottom: '4em'}} maxWidth="sm">
    <>
      <React.Suspense fallback={<div>Still loading!</div>}>
        {currentGroups.map((group) => (
          <Group id={group.id} groupName={group.group_name} stans={group.stans} groupPicture={group.picture} key={`group${group.id}`} />
        ))}
      </React.Suspense>
      <Button style={{width: '100%', ...themeDesign.custom.paddingy(3), ...themeDesign.custom.marginy(2)}} onClick={viewMore}>
        <Typography>
          view more
        </Typography>
      </Button>
    </>
    // </Container>
  );
};

export default GroupStart;
