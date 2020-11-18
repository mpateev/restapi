<?php namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class Blog extends ResourceController
{
  protected $modelName = 'App\Models\BlogModel';
  protected $format = 'json';

  public function index()
  {
    $posts = $this->model->findAll();
    return $this->respond($posts);
  }

  public function create()
  {
    helper(['form']);

    $rules = [
      'title' => 'required|min_length[6]',
      'description' => 'required'
    ];

    if(!$this->validate($rules))
    {
      return $this->fail($this->validator->getErrors());
    } else {
      $data = [
        'post_title' => $this->request->getVar('title'),
        'post_description' => $this->request->getVar('description')
      ];
      $post_id = $this->model->insert($data);
      $data['post_id'] = $post_id;
      return $this->respondCreated($data);
    }
  }

  public function show($id = null)
  {
    $data = $this->model->find($id);
    return $this->respond($data);
  }

  public function update($id = null)
  {
    helper(['form']);

    $rules = [
      'title' => 'required|min_length[6]',
      'description' => 'required'
    ];

    if(!$this->validate($rules))
    {
      return $this->fail($this->validator->getErrors());
    } else {
      $input = $this->request->getRawInput();
      $data = [
        'post_id' => $id,
        'post_title' => $input['title'],
        'post_description' => $input['description'],
      ];

      $this->model->save($data);
      return $this->respond($data);
    }
    }

  public function delete($id = null)
  {
    $data = $this->model->find($id);

    if ($data)
    {
      $this->model->delete($id);
      return $this->respondDeleted($data);
    } else {
      return $this->failNotFound('Item not found');

    }
  }
}

// Methods exist for the most common use cases:
//// Generic response method
//respond($data, 200);
//// Generic failure response
//fail($errors, 400);
//// Item created response
//respondCreated($data);
//// Item successfully deleted
//respondDeleted($data);
//// Command executed by no response required
//respondNoContent($message);
//// Client isn't authorized
//failUnauthorized($description);
//// Forbidden action
//failForbidden($description);
//// Resource Not Found
//failNotFound($description);
//// Data did not validate
//failValidationError($description);
//// Resource already exists
//failResourceExists($description);
//// Resource previously deleted
//failResourceGone($description);
//// Client made too many requests
//failTooManyRequests($description);
