FROM node:lts-buster
RUN git clone https://github.com/Tharushaaaaa777/THARUSHA-MD/root/tsandip
WORKDIR /root/tsandip
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
