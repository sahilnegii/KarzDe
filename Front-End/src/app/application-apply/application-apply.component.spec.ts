import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ApplicationApplyComponent } from './application-apply.component';

describe('ApplicationApplyComponent', () => {
  let component: ApplicationApplyComponent;
  let fixture: ComponentFixture<ApplicationApplyComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ApplicationApplyComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ApplicationApplyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
