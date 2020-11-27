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
      'description' => 'required',
      'featured_image' => 'uploaded[featured_image]|max_size[featured_image, 1024]|is_image[featured_image]'
    ];

    if(!$this->validate($rules))
    {
      return $this->fail($this->validator->getErrors());
    } else {

      // get the file
      $file = $this->request->getFile('featured_image');

      if (!$file->isValid())
        return $this->fail($file->getErrorString());

      $file->move('./assets/uploads'); // or $file->move('./assets/uploads', 'newFileName'); to rename a file

      $data = [
        'post_title' => $this->request->getVar('title'),
        'post_description' => $this->request->getVar('description'),
        'post_featured_image' => $file->getName()
      ];

      $post_id = $this->model->insert($data);
      $data['post_id'] = $post_id;
      return $this->respondCreated($data);
    }
  }

  public function show($id = null)
  {
    $data = $this->model->find($id);
    if ($data)
    {
    return $this->respond($data);
    } else {
      return $this->failNotFound('Item not found');
    }
  }

  public function update($id = null)
  {
    helper(['form', 'array']);

    $rules = [
      'title' => 'required|min_length[6]',
      'description' => 'required'
    ];

    // After uploading a file to the server, it will set $_FILES variable as following:
    //
    //    $_FILES = [
    //      'featured_image' => [
    //        'name' => 'filename',
    //        'size' => 'filesize',
    //        ...
    //      ]
    //    ]

    $fileName = dot_array_search('featured_image.name', $_FILES);

    // if file is uploaded, add image validation rule to the $rules array
    //
    if ($fileName != '')
    {
      $imgRule = ['featured_image' => 'uploaded[featured_image]|max_size[featured_image, 1024]|is_image[featured_image]'];
      $rules = array_merge($rules, $imgRule);
    }

    if(!$this->validate($rules))
    {
      return $this->fail($this->validator->getErrors());
    } else {
//      $input = $this->request->getRawInput();

      $data = [
        'post_id' => $id,
//        'post_title' => $input['title'],
        'post_title' => $this->request->getVar('title'),
        'post_description' => $this->request->getVar('description')
//        'post_updated_at' =>
      ];

      if ($fileName != '')
      {
        $file = $this->request->getFile('featured_image');
        if (! $file->isValid())
          return $this->fail($file->getErrorString());

        $file->move('./assets/uploads');
        $data['post_featured_image'] = $file->getName();
      }

      // TODO: add 'updated_at' field to the $data

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
