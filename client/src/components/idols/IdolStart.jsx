import React, { useContext, useEffect, useState } from 'react';
import axios from 'axios';
import { useTheme } from '@material-ui/core/styles';
import { Box, Container, Button, Typography } from '@material-ui/core';

import Idol from './Idol';
import ServerContext from '../context/ServerConn';

const IdolStart = () => {
  const themeDesign = useTheme();
  const [idols, setIdols] = useState([]);
  const [currentIdols, setCurrentIdols] = useState([]);
  const server = useContext(ServerContext);

  useEffect(() => {
    const dataFetch = async () => {
      console.log(`${server}/api/topIdols`);
      const results = await axios.get(`${server}/api/topIdols`);
      const { status } = results.data;
      setIdols(status);
      setCurrentIdols(status.slice(0,10));
    }
    dataFetch();
  }, []);

  const viewMore = () => {
    const more = idols.slice(currentIdols.length, currentIdols.length + 20);
    setCurrentIdols([...currentIdols, ...more]);
  }

  return (
    // <Container style={{...themeDesign.custom.padding(0), marginBottom: '4em'}} maxWidth="sm">
    <>
      <React.Suspense fallback={<div>Still loading!</div>}>
      {currentIdols.map((idol, index) => (
        <Idol
        id={idol.id}
        stageName={idol.stage_name}
        bias={idol.bias}
        biasWrecker={idol.bias_wrecker}
        group={idol.group_name}
        key={`idol${idol.id}`}
        picture={idol.picture}
        rank={index}
      />
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
}

export default IdolStart;
