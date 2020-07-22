import api from './api-helper';

export const getTickets = async (id) => {
  const resp = await api.get(`/tickets/${id}`);
  return resp.data;
};

// put = update
export const putTickets = async (id, ticketData) => {
  const resp = await api.put(`/tickets/${id}`, ticketData);
  return resp.data;
};