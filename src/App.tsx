import { lazy, Suspense } from 'react'
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import Navigation from './components/layout/Navigation'
import ScrollToTop from './components/effects/ScrollToTop'
import Footer from './components/layout/Footer'
import ScrollProgress from './components/ui/ScrollProgress'
import DonatePopup from './components/ui/DonatePopup'

const Home = lazy(() => import('./pages/Home'))
const Artifacts = lazy(() => import('./pages/Artifacts'))
const ArmorSets = lazy(() => import('./pages/ArmorSets'))
const SpiritWeapons = lazy(() => import('./pages/SpiritWeapons'))
const Classes = lazy(() => import('./pages/Classes'))
const RaidBosses = lazy(() => import('./pages/RaidBosses'))
const InfiniteCastle = lazy(() => import('./pages/InfiniteCastle'))
const Companions = lazy(() => import('./pages/Companions'))
const DreamRate = lazy(() => import('./pages/DreamRate'))
const SkillTrees = lazy(() => import('./pages/SkillTrees'))
const Seasons = lazy(() => import('./pages/Seasons'))
const Quests = lazy(() => import('./pages/Quests'))
const Cooking = lazy(() => import('./pages/Cooking'))
const CraftForever = lazy(() => import('./pages/CraftForever'))
const Guilds = lazy(() => import('./pages/Guilds'))
const Lore = lazy(() => import('./pages/Lore'))
const Codex = lazy(() => import('./pages/Codex'))
const Gacha = lazy(() => import('./pages/Gacha'))
const Guide = lazy(() => import('./pages/Guide'))
const Downloads = lazy(() => import('./pages/Downloads'))
const Privacy = lazy(() => import('./pages/Privacy'))
const Terms = lazy(() => import('./pages/Terms'))
const Support = lazy(() => import('./pages/Support'))
const Credits = lazy(() => import('./pages/Credits'))
const Donate = lazy(() => import('./pages/Donate'))

function Loading() {
  return (
    <div className="min-h-screen bg-stone-950 flex items-center justify-center">
      <div className="text-center">
        <div className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-700 tracking-widest animate-pulse">
          LOADING...
        </div>
      </div>
    </div>
  )
}

export default function App() {
  return (
    <BrowserRouter>
      <ScrollToTop />
      <ScrollProgress />
      <Navigation />
      <Suspense fallback={<Loading />}>
        <main className="min-h-screen">
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/artifacts" element={<Artifacts />} />
            <Route path="/armor-sets" element={<ArmorSets />} />
            <Route path="/spirit-weapons" element={<SpiritWeapons />} />
            <Route path="/classes" element={<Classes />} />
            <Route path="/raid-bosses" element={<RaidBosses />} />
            <Route path="/infinite-castle" element={<InfiniteCastle />} />
            <Route path="/companions" element={<Companions />} />
            <Route path="/dream-rate" element={<DreamRate />} />
            <Route path="/skill-trees" element={<SkillTrees />} />
            <Route path="/seasons" element={<Seasons />} />
            <Route path="/quests" element={<Quests />} />
            <Route path="/cooking" element={<Cooking />} />
            <Route path="/craftforever" element={<CraftForever />} />
            <Route path="/guilds" element={<Guilds />} />
            <Route path="/lore" element={<Lore />} />
            <Route path="/codex" element={<Codex />} />
            <Route path="/gacha" element={<Gacha />} />
            <Route path="/guide" element={<Guide />} />
            <Route path="/downloads" element={<Downloads />} />
            <Route path="/privacy" element={<Privacy />} />
            <Route path="/terms" element={<Terms />} />
            <Route path="/support" element={<Support />} />
            <Route path="/credits" element={<Credits />} />
            <Route path="/donate" element={<Donate />} />
          </Routes>
        </main>
      </Suspense>
      <Footer />
      <DonatePopup />
    </BrowserRouter>
  )
}
