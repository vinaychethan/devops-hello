const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.json({ message: 'Hello DevOps' });
});

const port = process.env.PORT || 3000;

// 🔑 ONLY start server if file is run directly
if (require.main === module) {
  app.listen(port, () => {
    console.log(`App running on port ${port}`);
  });
}

module.exports = app;
