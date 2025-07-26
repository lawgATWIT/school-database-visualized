import React, { useState, useEffect } from 'react';
import axios from 'axios';
import TableList from './components/TableList';
import TableView from './components/TableView';

function App() {
  const [tables, setTables] = useState([]);
  const [selectedTable, setSelectedTable] = useState('');
  const [data, setData] = useState([]);

  useEffect(() => {
    axios.get('http://localhost:3001/tables')
      .then(res => setTables(res.data));
  }, []);

  useEffect(() => {
    if (selectedTable) {
      axios.get(`http://localhost:3001/table/${selectedTable}`)
        .then(res => setData(res.data));
    }
  }, [selectedTable]);

  return (
    <div className="p-6 font-sans">
      <h1 className="text-2xl font-bold mb-4">📊 School Database Visualizer</h1>
      <TableList tables={tables} onSelect={setSelectedTable} />
      {selectedTable && <TableView table={selectedTable} data={data} />}
    </div>
  );
}

export default App;
