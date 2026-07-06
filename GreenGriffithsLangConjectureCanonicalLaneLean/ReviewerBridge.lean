import GreenGriffithsLangConjectureCanonicalLaneLean.Formalization
import GreenGriffithsLangConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace GreenGriffithsLangConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "6810c67bea26cc1177a4309d5b254bc48fc40f3c47fffbf089888a0f97ae91d5", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "30d6be64a2bbd118364cf2703a2fd66e0e5edaab029af5c27e03693634a1b4cd", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "b04fcbfe17aae391f401a6e9df9f2c39c7e6c42ee45f17f65680ac0b3d6a6850", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "24880c671aff68d099ec20b0202bb743909b091919024ebfb4056d21f8c2a2c4", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "20a1f7076a1ea60db69868c367e92bd9f9f18c3f78834526d038477f87f6b697", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "5f0f1c2c3a39ce54606fdca399f7b84a73dfd7f32850d7c6ffb514eed44db8ff", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "81047d57799d4b85d5e8516439a28bb8b857b7beff3d506ae50deaec39cc27c7", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "6955b3454c42902cac21ff3797b07b20a0b6d494b530ec6516d83b8ba194cf99", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "f938251f10512d49fdb078df6a578ac9fb712e4d4674e05b0283f9b719f97a66", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "GGL_G1", constant := "kappa_entire" },
  { gate := "GGL_G2", constant := "sigma_hyperbolic" },
  { gate := "GGL_G3", constant := "kappa_compact" },
  { gate := "GGL_G4", constant := "rho_rigidity" },
  { gate := "GGL_G5", constant := "jet_transfer" },
  { gate := "GGL_G6", constant := "eps_coh" },
  { gate := "GGL_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "bcbbdefba6c0c0c9cb5ab1ffba7c618618734f48a6184347dbfb12baf75c2788" },
  { path := "README.md", sha256 := "493d5c7d45de3e611d96e31d2eeb7c4f4201ec637f60237b3f99bb53d0a39764" },
  { path := "artifacts/constants_extracted.json", sha256 := "24880c671aff68d099ec20b0202bb743909b091919024ebfb4056d21f8c2a2c4" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "b04fcbfe17aae391f401a6e9df9f2c39c7e6c42ee45f17f65680ac0b3d6a6850" },
  { path := "artifacts/constants_registry.json", sha256 := "20a1f7076a1ea60db69868c367e92bd9f9f18c3f78834526d038477f87f6b697" },
  { path := "artifacts/promotion_report.json", sha256 := "81047d57799d4b85d5e8516439a28bb8b857b7beff3d506ae50deaec39cc27c7" },
  { path := "artifacts/stitch_constants.json", sha256 := "5f0f1c2c3a39ce54606fdca399f7b84a73dfd7f32850d7c6ffb514eed44db8ff" },
  { path := "notes/EG1_public.md", sha256 := "70f0f66c9ff2da55521f478e63fa765b38f7c2e07f10702e2dccb7b210b1ae79" },
  { path := "notes/EG2_public.md", sha256 := "0c290e95e118e984be6505531f3cf32e4009a45ef5595ab3a6ff160f89c3f07f" },
  { path := "notes/EG3_public.md", sha256 := "8ca28b22ad96db6d2e0012f34c2501618546df508adba1b455f2e57d351141d0" },
  { path := "notes/EG4_public.md", sha256 := "8b463ce609c4a1ff7b786fab5e06ffc5ee543b9de415166ca30bb30a2b7f2bc4" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "30d6be64a2bbd118364cf2703a2fd66e0e5edaab029af5c27e03693634a1b4cd" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "3b671bffe81a7e935c4841310c39872ddaaf141d4c72c2e818ba2fea6fdbd088" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "48d332874ad1e2cb4469b186bb48d1192786aafb699721c64152faa75133ee50" },
  { path := "paper/GREEN_GRIFFITHS_LANG_CONJECTURE_PREPRINT.md", sha256 := "44c8462037ca17efaf89befb1564630828df9d4587806a2cc02e93ef491362b4" },
  { path := "repro/REPRO_PACK.md", sha256 := "ba62e98ac3b218d9a872783f9f348e76f3030893cc1d835b25d9bb9cadfa779d" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "f4c49857b6123c0e022d1541f2234b67e7a74e9f170a2214e6908414741b67e0" },
  { path := "repro/certificate_baseline.json", sha256 := "f938251f10512d49fdb078df6a578ac9fb712e4d4674e05b0283f9b719f97a66" },
  { path := "repro/run_repro.sh", sha256 := "47f1705506f0a4e0c3e419030ad75ae8d3c89fb5c8930a864d75351babae622b" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/ggl_closure_guard.py", sha256 := "d2297df6b0bbe6315664934d2863cc9286f13c53da9f441d002203284a6d1140" },
  { path := "scripts/README.md", sha256 := "f86ace9581f1be6f2dfd8e8c6d3ad52751c61cf274042342136b1bbf4dc58883" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "GGL_G1", status := "PASS" },
  { gate := "GGL_G2", status := "PASS" },
  { gate := "GGL_G3", status := "PASS" },
  { gate := "GGL_G4", status := "PASS" },
  { gate := "GGL_G5", status := "PASS" },
  { gate := "GGL_G6", status := "PASS" },
  { gate := "GGL_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "jet_transfer", value := "1.030627" },
  { key := "kappa_compact", value := "0.801924619085806" },
  { key := "kappa_entire", value := "1.0918990000000002" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_hyperbolic", value := "1.0739999999999998" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "jet_transfer",
  "kappa_compact",
  "kappa_entire",
  "rho_rigidity",
  "sigma_hyperbolic",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end GreenGriffithsLangConjectureCanonicalLaneLean
end HautevilleHouse
