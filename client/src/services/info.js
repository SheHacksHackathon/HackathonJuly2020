import api from './api-helper';

export const getTickets = async (id) => {
  const resp = await api.get(`/ticket/${id}`);
  return resp.data;
};