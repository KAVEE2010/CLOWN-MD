FROM quay.io/qasimtech/mega-md:latest

WORKDIR /root/mega-mdx

COPY . .

RUN npm install && npm run build

EXPOSE 5000

CMD ["npm", "run", "start:optimized"]
