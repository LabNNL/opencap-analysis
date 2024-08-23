import sys

from tools.utils import *

from controllers.gait_analysis_controller import GaitAnalysisController
from controllers.muscle_analysis_controller import MuscleAnalysisController

if __name__ == "__main__":
    if not os.path.exists("data/sessions_info.json"):
        retrieves_and_sorts_sessions()

    choices = ["Muscle Analysis", "Gait Analysis", "Opencap data Recovery", "Disconnection", "Exit"]
    while True:
        clear_terminal()
        choice = get_user_selection("What do you want to do?", choices)
        match choice:
            case "Muscle Analysis":
                MuscleAnalysisController().menu()
            case "Gait Analysis":
                GaitAnalysisController().menu()
            case "Opencap data Recovery":
                retrieves_and_sorts_sessions()
            case "Disconnection":
                env_file_path = '.env'
                if os.path.exists(env_file_path):
                    os.remove(env_file_path)
                    print(f"File {env_file_path} has been deleted.")
                else:
                    print(f"File {env_file_path} not found.")
                sys.exit()
            case "Exit":
                break
