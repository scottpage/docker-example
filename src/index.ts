import * as express from 'express';
import * as path from 'path';

const app = express();

app.use('/', express.static(path.join(__dirname, '..', 'public'), { index: 'index.html' }));
app.get('/imhere', (_, res) => res.json({ data: 'Glad you made it!' }));

app.listen(30000, () => console.info('Started listening on port 30000'));
