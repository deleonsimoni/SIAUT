import { UtilBootstrapModule } from './util-bootstrap.module';

describe('UtilBootstrapModule', () => {
  let utilBootstrapModule: UtilBootstrapModule;

  beforeEach(() => {
    utilBootstrapModule = new UtilBootstrapModule();
  });

  it('should create an instance', () => {
    expect(utilBootstrapModule).toBeTruthy();
  });
});
