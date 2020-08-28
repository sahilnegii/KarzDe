import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ApplicationFormCompletionComponent } from './application-form-completion.component';

describe('ApplicationFormCompletionComponent', () => {
  let component: ApplicationFormCompletionComponent;
  let fixture: ComponentFixture<ApplicationFormCompletionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ApplicationFormCompletionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ApplicationFormCompletionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
