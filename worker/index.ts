import { Hono } from "hono";

const app = new Hono();

app.get("/", (c) =>
  c.json({
    platform: "JROC AI Platform Core",
    version: "1.0.0"
  })
);

app.get("/health", (c) =>
  c.json({
    status: "online"
  })
);

export default app;
