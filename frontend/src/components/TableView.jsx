import React from 'react';

export default function TableView({ table, data }) {
  if (data.length === 0) return <p>No data found.</p>;

  const headers = Object.keys(data[0]);

  return (
    <div>
      <h2 className="text-xl font-semibold mt-6 mb-2">{table}</h2>
      <div className="overflow-x-auto">
        <table className="min-w-full table-auto border-collapse border border-gray-200">
          <thead className="bg-gray-100">
            <tr>
              {headers.map(header => (
                <th key={header} className="border px-4 py-2 text-left">{header}</th>
              ))}
            </tr>
          </thead>
          <tbody>
            {data.map((row, idx) => (
              <tr key={idx} className="hover:bg-gray-50">
                {headers.map(header => (
                  <td key={header} className="border px-4 py-2">{row[header]}</td>
                ))}
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
