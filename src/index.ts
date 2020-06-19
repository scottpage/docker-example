import * as express from 'express';

const app = express();

app.get('/', (_, res) => {
  return res.json({
    data: 'Glad you made it!'
  });
});

app.listen(30000, () => console.info('Started listening on port 30000'));
