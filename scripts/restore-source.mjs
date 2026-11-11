import { readFile, writeFile } from "node:fs/promises";
import { gunzipSync } from "node:zlib";

const folder = new URL("../src/", import.meta.url);
const encoded = await Promise.all([1, 2, 3].map((part) => readFile(new URL(`TradingJournal.jsx.gz.b64.part${part}`, folder), "utf8")));
await writeFile(new URL("TradingJournal.jsx", folder), gunzipSync(Buffer.from(encoded.join(""), "base64")));
