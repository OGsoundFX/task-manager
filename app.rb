require_relative "./repository.rb"
require_relative "./controller.rb"
require_relative "./router.rb"

repository = Repository.new
controller = Controller.new(repository)
router = Router.new(controller)

router.run