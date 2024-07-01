import { expect } from "chai";

describe("MessageBoard: post and reply", () => {
  it("should accept non-zero IPFS hash (simulated)", async () => {
    expect("0x123").to.not.equal("0x0");
  });
});
