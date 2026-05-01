// WebGPU ping-pong texture helper scaffold.
// This is intentionally minimal; Copilot should wire it into a full demo.

export class PingPongTextures {
  constructor(device, width, height, format = "rgba32float") {
    this.device = device;
    this.width = width;
    this.height = height;
    this.format = format;
    this.a = this.createTexture();
    this.b = this.createTexture();
    this.read = this.a;
    this.write = this.b;
  }

  createTexture() {
    return this.device.createTexture({
      size: [this.width, this.height],
      format: this.format,
      usage:
        GPUTextureUsage.STORAGE_BINDING |
        GPUTextureUsage.TEXTURE_BINDING |
        GPUTextureUsage.COPY_SRC |
        GPUTextureUsage.COPY_DST |
        GPUTextureUsage.RENDER_ATTACHMENT,
    });
  }

  swap() {
    const tmp = this.read;
    this.read = this.write;
    this.write = tmp;
  }
}
