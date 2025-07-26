import React from 'react';

export default function TableList({ tables, onSelect }) {
  return (
    <div className="mb-4">
      <h2 className="text-xl font-semibold mb-2">Tables</h2>
      <div className="flex flex-wrap gap-2">
        {tables.map(table => (
          <button
            key={table}
            className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600"
            onClick={() => onSelect(table)}
          >
            {table}
          </button>
        ))}
      </div>
    </div>
  );
}
