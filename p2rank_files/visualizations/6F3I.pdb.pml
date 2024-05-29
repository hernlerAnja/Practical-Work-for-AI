
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6F3I.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6F3I.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [206,226,308,309,1106,310,311,312,327,328,199,224,225,296,580,581,582,576,577,578,579,401,329,597,587,997,1020,1021,1022,1097,1098,1005,1105,503,1104,502,504,607,603,608,194,195,196,200,201,204,198,599,601,634,635,659,630,626,627,606,360,363,359,1119,1120,1122,1127] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2840,2832,2827,2316,2317,2319,2271,2273,2318,2823,2825,2885,2320,2321,2327,2369,2315,2314,2367,2853,2846,2847,2852,2860,2861,3224,3223,3248,2924,2894,2929,2932,2943,2278,2274,3324,3247,3323,2686,2829,2813,3331,2368,2805,2455,2802,2334,2336,2469,2471,2807,2808] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2585,2789,2488,2544,2517,2807,2808,2338,2471,2345,2487,3328,3332,3345,3196,3213,3348,3353,3354,2348,2350,2351,2546,2547,2515,3447,2542,2543,2549,2550] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3975,3976,2906,2908,2909,3690,3977,3698,1473,1458,680,1750,1751,1752,1465,682,683] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1472,1473,1480,1458,1702,1708,1710,1713,1500,1525,1526,1527,1534,1715,1717,1752,1465,3724,3725,3739,3740,3741,3743,3738,1743] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        