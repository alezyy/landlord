<?php
App::uses('AppController', 'Controller');
/**
 * EmploymentAndIncomeHistories Controller
 *
 * @property EmploymentAndIncomeHistory $EmploymentAndIncomeHistory
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class EmploymentAndIncomeHistoriesController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator', 'Session');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->EmploymentAndIncomeHistory->recursive = 0;
		$this->set('employmentAndIncomeHistories', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->EmploymentAndIncomeHistory->exists($id)) {
			throw new NotFoundException(__('Invalid employment and income history'));
		}
		$options = array('conditions' => array('EmploymentAndIncomeHistory.' . $this->EmploymentAndIncomeHistory->primaryKey => $id));
		$this->set('employmentAndIncomeHistory', $this->EmploymentAndIncomeHistory->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->EmploymentAndIncomeHistory->create();
			if ($this->EmploymentAndIncomeHistory->save($this->request->data)) {
				$this->Session->setFlash(__('The employment and income history has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The employment and income history could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->EmploymentAndIncomeHistory->exists($id)) {
			throw new NotFoundException(__('Invalid employment and income history'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->EmploymentAndIncomeHistory->save($this->request->data)) {
				$this->Session->setFlash(__('The employment and income history has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The employment and income history could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('EmploymentAndIncomeHistory.' . $this->EmploymentAndIncomeHistory->primaryKey => $id));
			$this->request->data = $this->EmploymentAndIncomeHistory->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->EmploymentAndIncomeHistory->id = $id;
		if (!$this->EmploymentAndIncomeHistory->exists()) {
			throw new NotFoundException(__('Invalid employment and income history'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->EmploymentAndIncomeHistory->delete()) {
			$this->Session->setFlash(__('The employment and income history has been deleted.'));
		} else {
			$this->Session->setFlash(__('The employment and income history could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
