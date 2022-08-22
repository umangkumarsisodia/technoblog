<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TechnoBlog-Sign Up</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="signup.css">
<script src="signup.js"></script>
</head>
<body class="bgclr">
    <div class="container-sm">
        <div class="row d-flex justify-content-center align-items-center h-100">
    
                <div class="card card-registration mx-4 my-4 bgclr">
                    <div class="row g-0>
                        
                            
                                <h3 class="mb-5 text-uppercase text-center">Sign Up</h3>

                                <div class="row">
                                    <div class="col-md-4 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="fname" id="fname"
                                                class="form-control-lg" placeholder="first name" />

                                        </div>
                                    </div>
                                    <div class="col-md-4 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="mname" id="mname"
                                                class="form-control-lg" placeholder="middle name" />

                                        </div>
                                    </div>

                                    <div class="col-md-4 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="lname" id="lname"
                                                class="form-control-lg" placeholder="last name" />

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="email" id="email"
                                                class="form-control-lg" placeholder="email id" />
                                                <small id="email_error"></small>
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="username" id="username"
                                                class="form-control-lg" placeholder="username" />
                                                <small id="username_error"></small>
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <textarea name="about" class="form-control-lg" rows="10" cols="20" placeholder="Tell about yourself..."></textarea>
                                        </div>
                                    </div>
                                    
                                </div>


                                <div class="row">
                                    <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                                        <h4 class="mb-0 me-4">Gender: </h4>

                                        <div class="form-check form-check-inline mb-0 me-4">
                                            <input class="form-check-input" type="radio" name="gender" id="female"
                                                value="female" />
                                            <label class="form-check-label" for="female">Female</label>
                                        </div>

                                        <div class="form-check form-check-inline mb-0 me-4">
                                            <input class="form-check-input" type="radio" name="gender" id="male"
                                                value="male" />
                                            <label class="form-check-label" for="male">Male</label>
                                        </div>


                                        <div class="form-check form-check-inline mb-0">
                                            <input class="form-check-input" type="radio" name="gender" id="other"
                                                value="other" />
                                            <label class="form-check-label" for="other">Other</label>
                                        </div>

                                    </div>
                                </div>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="password" id="password" class="form-control-lg"
                                            placeholder="password">
                                        <small id="password_error"></small>
                                    </div>
                                </div>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="password" id="confirmpassword" class="form-control-lg"
                                            placeholder="confirm password">
                                        <small id="confirmpassword_error"></small>
                                    </div>
                                </div>
                                <div class="d-flex justify-content pt-3">
                                    <input type="checkbox" name="check"/><label>I accept all terms and conditions.</label>
                                </div>
                                <div class="d-flex justify-content-end pt-3">
                                    <button type="button" class="btn btn-light btn-lg">Reset</button>
                                    <button type="button" class="btn btn-warning btn-lg ms-2" onclick="validate()">Sign up</button>
                                </div>

                            </div>
                        </div>
                    
                </div>
            </div>
    
    </section>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
    crossorigin="anonymous"></script>
</html>