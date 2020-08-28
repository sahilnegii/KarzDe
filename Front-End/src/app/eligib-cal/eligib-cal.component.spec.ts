import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EligibCalComponent } from './eligib-cal.component';

describe('EligibCalComponent', () => {
  let component: EligibCalComponent;
  let fixture: ComponentFixture<EligibCalComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EligibCalComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EligibCalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
